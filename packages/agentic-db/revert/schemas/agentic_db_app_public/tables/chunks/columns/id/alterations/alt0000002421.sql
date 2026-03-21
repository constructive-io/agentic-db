-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/id/alterations/alt0000002421


ALTER TABLE "agentic_db_app_public".chunks 
  ALTER COLUMN id DROP NOT NULL;


