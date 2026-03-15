-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/updated_at/column


ALTER TABLE "agent_db_app_public".contact_phones 
  DROP COLUMN updated_at RESTRICT;


