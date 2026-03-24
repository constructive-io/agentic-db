-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/agent_id/column


ALTER TABLE agentic_db_app_public.conversations 
  DROP COLUMN agent_id RESTRICT;


