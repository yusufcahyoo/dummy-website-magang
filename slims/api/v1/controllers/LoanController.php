<?php
/**
 * @Created by          : Waris Agung Widodo (ido.alit@gmail.com)
 * @Date                : 09/11/20 23.24
 * @File name           : LoanController.php
 */

class LoanController extends Controller
{
    protected $sysconf;

    /**
     * @var mysqli
     */
    protected $db;

    function __construct($sysconf, $obj_db)
    {
        $this->sysconf = $sysconf;
        $this->db = $obj_db;
    }

    function getSummary() {
        parent::withJson([
            'data' => [
                'total' => $this->getTotal(),
                'new' => $this->getNew(),
                'return' => $this->getReturn(),
                'extend' => $this->getExtends(),
                'overdue' => $this->getOverdue(),
                'loans' => $this->getLoanDetailSummary() // Added loan details
            ]
        ]);
    }

    private function getTotal() {
        $query = $this->db->query("SELECT COUNT(loan_id) FROM loan");
        return ($query->fetch_row())[0];
    }

    private function getNew() {
        $query = $this->db->query("SELECT COUNT(loan_id) FROM loan WHERE is_return=0 AND is_lent=1");
        return ($query->fetch_row())[0];
    }

    private function getReturn() {
        $query = $this->db->query("SELECT COUNT(loan_id) FROM loan WHERE is_return=1 AND is_lent=1");
        return ($query->fetch_row())[0];
    }

    private function getExtends() {
        $query = $this->db->query("SELECT COUNT(loan_id) FROM loan WHERE is_return=0 AND is_lent=1 AND renewed > 0");
        return ($query->fetch_row())[0];
    }

    private function getOverdue() {
        $query = $this->db->query("SELECT COUNT(loan_id) FROM loan WHERE is_return=0 AND is_lent=1 AND due_date < now()");
        return ($query->fetch_row())[0];
    }

    public function getDate($start_date, $print = true)
    {
        $sql = "SELECT DATE_FORMAT(loan_date,'%d/%m') AS loandate, loan_date
            FROM loan WHERE loan_date BETWEEN DATE_SUB('".$start_date."', INTERVAL 8 DAY) AND '".$start_date."' 
            GROUP BY loan_date ORDER BY loan_date";
        $query = $this->db->query($sql);
        $date = ['raw' => [], 'date' => []];
        while($data = $query->fetch_assoc()) {
            $date['raw'][] = $data['loandate'];
            $date['date'][] = $data['loan_date'];
        }
        $date['text'] = implode(', ', $date['raw']); 
        if($print) parent::withJson($date);
        return $date;
    }

    public function getSummaryDate($date)
    {

        $dates = $this->getDate($date, false);
        $return = [
            'loan' => [],
            'return' => [],
            'extend' => []
        ];
        
        foreach ($dates['date'] as $value) {
            $query_loan = $this->db->query("SELECT 
                        COUNT(loan_date) AS countloan
                    FROM 
                        loan
                    WHERE 
                        loan_date = '".$value."' 
                        AND is_lent = 1 
                        AND renewed = 0
                        AND is_return = 0
                    GROUP BY 
                        loan_date");
            
            if($query_loan->num_rows > 0) {
                while ($data_loan = $query_loan->fetch_row()) $return['loan'][] = $data_loan[0];
            } else {
                $return['loan'][] = 0;
            }

            $query_loan = $this->db->query("SELECT 
                        COUNT(loan_date) AS countloan
                    FROM 
                        loan
                    WHERE 
                        loan_date = '".$value."' 
                        AND is_lent = 1
                        AND is_return = 1
                    GROUP BY 
                        return_date");
            
            if($query_loan->num_rows > 0) {
                while ($data_loan = $query_loan->fetch_row()) $return['return'][] = $data_loan[0];
            } else {
                $return['return'][] = 0;
            }

            $query_loan = $this->db->query("SELECT 
                        COUNT(loan_date) AS countloan
                    FROM 
                        loan
                    WHERE 
                        loan_date = '".$value."' 
                        AND is_lent     = 1 
                        AND renewed     >= 1
                        AND is_return   = 0
                    GROUP BY 
                        return_date");
            
            if($query_loan->num_rows > 0) {
                while ($data_loan = $query_loan->fetch_row()) $return['extend'][] = $data_loan[0];
            } else {
                $return['extend'][] = 0;
            }
        }

        parent::withJson([
            'data' => $return
        ]);
    }

      private function getLoanDetailSummary() {
        $sql = "SELECT 
                    l.loan_id,
                    m.member_name,
                    b.title,
                    l.loan_date,
                    l.due_date,
                    l.return_date
                FROM loan l
                LEFT JOIN member m ON l.member_id = m.member_id
                LEFT JOIN item i ON l.item_code = i.item_code
                LEFT JOIN biblio b ON i.biblio_id = b.biblio_id
                WHERE l.is_lent = 1 AND l.is_return = 0
                ORDER BY l.loan_date DESC
                LIMIT 10";

        $query = $this->db->query($sql);
        $data = [];

        while ($row = $query->fetch_assoc()) {
            $data[] = [
                'loan_id' => $row['loan_id'],
                'member_name' => $row['member_name'],
                'title' => $row['title'],
                'loan_date' => $row['loan_date'],
                'due_date' => $row['due_date'],
                'return_date' => $row['return_date']
            ];
        }

        return $data;
    }
}