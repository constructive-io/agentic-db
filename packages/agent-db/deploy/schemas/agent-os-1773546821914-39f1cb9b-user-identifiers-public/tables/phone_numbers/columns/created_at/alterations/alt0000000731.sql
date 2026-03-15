-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/columns/created_at/alterations/alt0000000731
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers 
  ALTER COLUMN created_at SET DEFAULT now();

