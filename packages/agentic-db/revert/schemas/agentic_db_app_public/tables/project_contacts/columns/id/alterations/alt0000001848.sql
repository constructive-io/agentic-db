-- Revert: schemas/agentic_db_app_public/tables/project_contacts/columns/id/alterations/alt0000001848


ALTER TABLE "agentic_db_app_public".project_contacts 
  ALTER COLUMN id DROP NOT NULL;


