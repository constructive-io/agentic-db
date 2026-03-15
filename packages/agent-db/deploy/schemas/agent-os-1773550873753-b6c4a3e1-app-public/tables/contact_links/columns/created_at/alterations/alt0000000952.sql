-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/columns/created_at/alterations/alt0000000952
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/columns/created_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_links 
    ALTER COLUMN created_at SET DEFAULT now();

