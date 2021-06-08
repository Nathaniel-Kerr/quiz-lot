class SubjectsController < ApplicationController

    def show
        @subject = Subject.find(params[:id])
    end

    def index
        if params[:user_flashcards]
            @subjects = Subject.find(params[:flashcard_id]).subjects
        end
    end

    def new
        @subject = Subject.new
        # @flashcard_subject = FlashcardSubject.new
    end

    def create
        @subject = Subject.new(subject_params)
        if @subject.save 
            # @flashcard_subject = FlashcardSubject.new
            # @flashcard_subject.subject_id = @subject.id
            redirect_to flashcards_path
        else
            render :new
        end
    end

    def subject_params
        params.require(:subject).permit(:name)
    end

end
