class ArtifactsController < ApplicationController

    def index
        @artifacts = Artifact.all
    end
    
    def show
        @artifact = Artifact.find(params[:id])
    end
    
    def new
        @artifact = Artifact.new
    end

    def edit
        @artifact = Artifact.find(params[:id])
    end

    def create
        @artifact = Artifact.new(artifact_params)

        if @artifact.save
            redirect_to @artifact
        else
            render 'new'
        end
    end

    def update
        @artifact = Artifact.find(params[:id])

        if @artifact.update(artifact_params)
            redirect_to @artifact
        else
            render 'edit'
        end
    end

    def destroy
        @artifact = Artifact.find(params[:id])
        @artifact.destroy
        redirect_to artifacts_path
    end

    private
        def artifact_params
            params.require(:artifact).permit(:name, :description)
        end

end
