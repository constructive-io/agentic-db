-- Revert: schemas/agent_db_app_public/tables/feedback/columns/target_type/alterations/alt0000001126


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN target_type DROP NOT NULL;


