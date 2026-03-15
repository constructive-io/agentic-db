-- Revert: schemas/agent_db_app_public/tables/feedback/columns/id/column


ALTER TABLE agent_db_app_public.feedback 
  DROP COLUMN id RESTRICT;


