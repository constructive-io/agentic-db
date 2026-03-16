-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/updated_at/alterations/alt0000000944
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/contact_links/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".contact_links 
  ALTER COLUMN updated_at SET NOT NULL;

