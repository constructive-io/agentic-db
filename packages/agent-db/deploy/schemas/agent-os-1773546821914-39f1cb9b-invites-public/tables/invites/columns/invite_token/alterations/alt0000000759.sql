-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_token/alterations/alt0000000759
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_token/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
    ALTER COLUMN invite_token SET DEFAULT encode( gen_random_bytes( 16 ), 'hex' );

