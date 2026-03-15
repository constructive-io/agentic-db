-- Revert: schemas/agent_db_app_public/tables/interactions/constraints/interactions_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".interactions 
  DROP CONSTRAINT interactions_contact_id_fkey;


