namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;

  summaryID: Integer;
  summary : Association to Summaries on summary.ID = summaryID;
}

entity Summaries {
    key ID: Integer;
    text: String;

    bookID: Integer;
}