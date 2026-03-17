-- Revert: schemas/agentic_db_app_public/tables/venue_links/constraints/venue_links_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".venue_links 
  DROP CONSTRAINT venue_links_entity_id_fkey;


