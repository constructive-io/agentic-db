-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/table


GRANT INSERT (cc, number, owner_id, is_primary) ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers TO authenticated;

