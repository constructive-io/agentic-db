-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/usage_count/alterations/alt0000002546


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".attachments TO authenticated;

