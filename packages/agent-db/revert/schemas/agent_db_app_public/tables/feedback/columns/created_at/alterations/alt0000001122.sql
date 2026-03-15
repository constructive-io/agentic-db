-- Revert: schemas/agent_db_app_public/tables/feedback/columns/created_at/alterations/alt0000001122


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN created_at DROP NOT NULL;


