-- Revert: schemas/agent_db_app_public/tables/attachments/constraints/attachments_pkey/constraint


ALTER TABLE agent_db_app_public.attachments 
  DROP CONSTRAINT attachments_pkey;


