-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/updated_at/alterations/alt0000000894
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/updated_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
    ALTER COLUMN updated_at SET DEFAULT now();

