-- Revert: schemas/agent_db_app_public/tables/feedback/columns/target_id/alterations/alt0000001127


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN target_id DROP NOT NULL;


