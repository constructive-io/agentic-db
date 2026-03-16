-- Revert: schemas/agent_db_app_public/tables/company_notes/columns/id/alterations/alt0000002419


ALTER TABLE "agent_db_app_public".company_notes 
  ALTER COLUMN id DROP NOT NULL;


