-- Revert: schemas/agent_db_app_public/tables/contacts/columns/instagram_handle/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN instagram_handle RESTRICT;


