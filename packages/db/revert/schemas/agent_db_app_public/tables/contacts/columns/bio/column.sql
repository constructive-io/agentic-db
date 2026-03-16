-- Revert: schemas/agent_db_app_public/tables/contacts/columns/bio/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN bio RESTRICT;


