-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/owner_id/alterations/alt0000002312
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/owner_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  ALTER COLUMN owner_id SET NOT NULL;

