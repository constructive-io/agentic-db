-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/id/alterations/alt0000002116


ALTER TABLE "agentic_db_app_public".sessions 
  ALTER COLUMN id DROP NOT NULL;


