-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/is_primary/column


ALTER TABLE "agent_db_app_public".contact_phones 
  DROP COLUMN is_primary RESTRICT;


