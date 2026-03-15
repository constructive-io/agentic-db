-- Revert: schemas/agent_db_app_public/tables/attachments/columns/mime_type/column


ALTER TABLE agent_db_app_public.attachments 
  DROP COLUMN mime_type RESTRICT;


