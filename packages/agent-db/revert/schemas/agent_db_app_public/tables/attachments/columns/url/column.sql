-- Revert: schemas/agent_db_app_public/tables/attachments/columns/url/column


ALTER TABLE "agent_db_app_public".attachments 
  DROP COLUMN url RESTRICT;


