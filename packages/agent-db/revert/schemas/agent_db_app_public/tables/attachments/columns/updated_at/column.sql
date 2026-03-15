-- Revert: schemas/agent_db_app_public/tables/attachments/columns/updated_at/column


ALTER TABLE "agent_db_app_public".attachments 
  DROP COLUMN updated_at RESTRICT;


