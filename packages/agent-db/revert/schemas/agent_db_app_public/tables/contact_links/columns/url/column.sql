-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/url/column


ALTER TABLE agent_db_app_public.contact_links 
  DROP COLUMN url RESTRICT;


