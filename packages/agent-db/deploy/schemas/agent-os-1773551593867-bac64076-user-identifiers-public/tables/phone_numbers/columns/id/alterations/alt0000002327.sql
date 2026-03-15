-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/id/alterations/alt0000002327
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

