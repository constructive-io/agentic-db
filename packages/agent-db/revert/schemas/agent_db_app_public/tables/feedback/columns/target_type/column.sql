-- Revert: schemas/agent_db_app_public/tables/feedback/columns/target_type/column


ALTER TABLE agent_db_app_public.feedback 
  DROP COLUMN target_type RESTRICT;


