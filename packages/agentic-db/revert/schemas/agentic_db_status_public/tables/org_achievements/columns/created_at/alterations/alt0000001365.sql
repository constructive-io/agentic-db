-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/created_at/alterations/alt0000001365


ALTER TABLE "agentic_db_status_public".org_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


