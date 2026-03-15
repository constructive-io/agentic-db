-- Revert: schemas/agent_db_app_public/tables/attachments/columns/entity_id/column


ALTER TABLE "agent_db_app_public".attachments 
  DROP COLUMN entity_id RESTRICT;


