-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/alterations/alt0000002308
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  DISABLE ROW LEVEL SECURITY;

