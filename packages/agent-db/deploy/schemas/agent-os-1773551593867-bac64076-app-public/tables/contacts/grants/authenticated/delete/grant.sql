-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/embedding/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".contacts TO authenticated;

