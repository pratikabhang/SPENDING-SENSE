<?php
require_once('tcpdf/tcpdf.php');

// Create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// Set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Your Name');
$pdf->SetTitle('Expense Tracker');
$pdf->SetSubject('Expense Tracker PDF');
$pdf->SetKeywords('Expense, Tracker, PDF');

// Set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' Expense Tracker', PDF_HEADER_STRING);

// Set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// Set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// Set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// Set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// Set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// Add a page
$pdf->AddPage();

// Set some content to display
$html = '<h1>Expense Tracker</h1>';
$html .= '<table border="1"><tr><th>Date</th><th>Description</th><th>Amount</th></tr>';
// Assuming you have an array of expenses
$expenses = [
    ['2024-04-01', 'Groceries', '50'],
    ['2024-04-02', 'Dinner', '30'],
    ['2024-04-03', 'Gas', '40'],
];
foreach ($expenses as $expense) {
    $html .= '<tr><td>'.$expense[0].'</td><td>'.$expense[1].'</td><td>'.$expense[2].'</td></tr>';
}
$html .= '</table>';

// Print content
$pdf->writeHTML($html, true, false, true, false, '');

// Close and output PDF document
$pdf->Output('expense_tracker.pdf', 'I');
