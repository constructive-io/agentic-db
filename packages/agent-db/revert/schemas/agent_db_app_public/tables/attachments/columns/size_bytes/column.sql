-- Revert: schemas/agent_db_app_public/tables/attachments/columns/size_bytes/column


ALTER TABLE agent_db_app_public.attachments 
  DROP COLUMN size_bytes RESTRICT;


