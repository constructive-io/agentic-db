-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/id/alterations/alt0000002707


ALTER TABLE "agentic_db_app_public".template_chunks 
  ALTER COLUMN id DROP NOT NULL;


