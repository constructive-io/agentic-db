-- Revert: schemas/agent_db_app_public/tables/project_contacts/columns/id/column


ALTER TABLE "agent_db_app_public".project_contacts 
  DROP COLUMN id RESTRICT;


