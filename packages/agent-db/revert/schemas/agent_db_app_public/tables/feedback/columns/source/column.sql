-- Revert: schemas/agent_db_app_public/tables/feedback/columns/source/column


ALTER TABLE agent_db_app_public.feedback 
  DROP COLUMN source RESTRICT;


