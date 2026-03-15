-- Revert: schemas/agent_db_app_public/tables/event_links/constraints/event_links_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".event_links 
  DROP CONSTRAINT event_links_entity_id_fkey;


