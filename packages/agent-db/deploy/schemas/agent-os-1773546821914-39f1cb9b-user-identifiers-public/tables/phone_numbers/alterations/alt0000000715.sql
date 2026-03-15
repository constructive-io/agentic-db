-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/alterations/alt0000000715
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers 
  DISABLE ROW LEVEL SECURITY;

