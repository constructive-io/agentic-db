-- Revert: schemas/agent_db_app_public/tables/attachments/columns/id/column


ALTER TABLE agent_db_app_public.attachments 
  DROP COLUMN id RESTRICT;


