-- Revert: schemas/agent_db_app_public/tables/attachments/columns/filename/column


ALTER TABLE "agent_db_app_public".attachments 
  DROP COLUMN filename RESTRICT;


