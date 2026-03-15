-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/id/alterations/alt0000000942


ALTER TABLE agent_db_app_public.venue_links 
  ALTER COLUMN id DROP NOT NULL;


