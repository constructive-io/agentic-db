-- Revert: schemas/agent_db_app_public/tables/feedback/constraints/feedbacks_pkey/constraint


ALTER TABLE agent_db_app_public.feedback 
  DROP CONSTRAINT feedbacks_pkey;


