class FlashcardsController < ApplicationController

    def index
        @flashcards = Flashcard.all 
    end

    def show
        @flashcard = Flashcard.find(params[:id])
    end

    def new
        @flashcard = Flashcard.new
    end

    def create
        @flashcard = Flashcard.new(flashcard_params)

        if @flashcard.save
            redirect_to flashcards_path
        else
            render 'new'
        end
    end

    def edit
        @flashcard = Flashcard.find(params[:id])
    end

    def update
        @flashcard = Flashcard.find(params[:id])
        @flashcard.update(flashcard_params)
        if @flashcard.save
            redirect_to flashcard_path(@flashcard)
        else
            render 'edit'
        end
    end

    def destroy
        Flashcard.destroy(params[:id])
        redirect_to flashcards_path
    end

    private

    def flashcard_params
        params.require(:flashcard).permit(:question, :answer, :category)
    end
end
