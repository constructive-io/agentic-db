-- Revert: schemas/agent_db_app_public/tables/attachments/columns/attachable_type/column


ALTER TABLE agent_db_app_public.attachments 
  DROP COLUMN attachable_type RESTRICT;


