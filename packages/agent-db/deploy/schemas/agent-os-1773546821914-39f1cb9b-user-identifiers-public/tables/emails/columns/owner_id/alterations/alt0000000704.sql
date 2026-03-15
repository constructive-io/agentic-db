-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/owner_id/alterations/alt0000000704
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/owner_id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

