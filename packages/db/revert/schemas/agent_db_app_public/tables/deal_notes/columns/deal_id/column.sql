-- Revert: schemas/agent_db_app_public/tables/deal_notes/columns/deal_id/column


ALTER TABLE "agent_db_app_public".deal_notes 
  DROP COLUMN deal_id RESTRICT;


