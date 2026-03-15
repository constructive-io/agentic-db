-- Deploy: schemas/agent_db_app_public/tables/images/columns/url/alterations/alt0000000857
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/url/column
-- requires: schemas/agent_db_app_public/tables/images/columns/updated_at/alterations/alt0000000856


ALTER TABLE agent_db_app_public.images 
  ALTER COLUMN url SET NOT NULL;

