-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/columns/owner_id/alterations/alt0000000719
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/columns/owner_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers 
  ALTER COLUMN owner_id SET NOT NULL;

