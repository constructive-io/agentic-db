-- Revert: schemas/agent_db_app_public/tables/attachments/columns/created_at/column


ALTER TABLE agent_db_app_public.attachments 
  DROP COLUMN created_at RESTRICT;


