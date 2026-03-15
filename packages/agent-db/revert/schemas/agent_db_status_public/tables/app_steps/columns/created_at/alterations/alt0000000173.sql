-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/created_at/alterations/alt0000000173


ALTER TABLE agent_db_status_public.app_steps 
  ALTER COLUMN created_at DROP DEFAULT;


