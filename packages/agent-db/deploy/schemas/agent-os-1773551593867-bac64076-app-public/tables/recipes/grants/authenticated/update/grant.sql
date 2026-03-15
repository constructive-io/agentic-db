-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/source_entity_type/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".recipes TO authenticated;

