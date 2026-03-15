-- Revert: schemas/agent_db_app_public/tables/feedback/columns/comment/column


ALTER TABLE agent_db_app_public.feedback 
  DROP COLUMN comment RESTRICT;


