-- Revert: schemas/agent_db_app_public/tables/company_notes/columns/id/column


ALTER TABLE "agent_db_app_public".company_notes 
  DROP COLUMN id RESTRICT;


