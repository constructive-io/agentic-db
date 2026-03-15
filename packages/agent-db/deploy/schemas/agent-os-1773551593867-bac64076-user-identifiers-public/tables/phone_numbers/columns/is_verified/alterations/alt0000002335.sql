-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/is_verified/alterations/alt0000002335
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/is_verified/column



ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
    ALTER COLUMN is_verified SET DEFAULT false;

